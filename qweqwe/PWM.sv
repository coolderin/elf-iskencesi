module PWM 
(
    input logic clk,   //clk            
    input logic rst,   //reset            
    input logic inc,   //arttırma         
    input logic dec,   //azaltma           
    input logic [9:0] pwm_reg,   // cycle girişi   
    output logic pwm_out, // pwm çıkışı
    output logic [9:0] led  //led yakma        
);

    logic [9:0] blink; //led'den istenilen output değerini görmek iin gerekli
    logic [3:0] led_shifter; // tek satırda led output değereini belirlemek için shift mantığı kullanıldı
    initial begin
        blink = 10'b1111111111; //blinke değer atanıyor
        led_shifter = 0;        // shift değer atama
    end
    
    logic [9:0] counter;  // sayaç karşılaştırma için      
    logic [9:0] temp_dty_cycle;  //geçici duty cycle  
    logic [9:0] last_dty_cycle;  // gelen inputun değerini saklar inc dec istenilen şekilde çalışması için
    
    always @(posedge clk) begin //  counter bloğu
        if (rst) begin  
            counter <= 0;
        end
        else begin
            if (counter < 999) begin
                counter <= counter + 1;
            end
            else begin
                counter <= 0;
            end
        end
    end
    
    always @(posedge clk) begin // cycle bloğu
        if (rst) begin 
            temp_dty_cycle <= 0;
            last_dty_cycle <= 0;
        end
        else begin
            if (pwm_reg != last_dty_cycle) begin //son tutaln değer karşılaştırılması yapılır
                temp_dty_cycle <= pwm_reg;
                last_dty_cycle <= pwm_reg;
            end
            else if (inc && !dec && temp_dty_cycle < 900) begin //inc işlemi yapılır koyula "< 900" 'ün sebebi taşmayı önlemek
                temp_dty_cycle <= temp_dty_cycle + 100; 
            end
            else if (!inc && dec && temp_dty_cycle > 100) begin //inc işlemi yapılır koyula "> 100" 'ün sebebi taşmayı önlemek
                temp_dty_cycle <= temp_dty_cycle - 100;  
            end
        end
    end
    
    always @(posedge clk) begin // pwm_out bloğu
        if (counter < temp_dty_cycle) begin //karşılaştırma işlemi ile  pwm_out gerekli outputu verir
            pwm_out <= 1; 
        end 
        else begin
            pwm_out <= 0;
        end
    end
    
    always @(*) begin //kaydırma işlemi gerekli led değeri atanır
        led = blink << (10 - (temp_dty_cycle / 100)); 
    end
    
endmodule