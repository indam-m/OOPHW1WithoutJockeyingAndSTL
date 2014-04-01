# - Berikut adalah contoh Makefile untuk autograde
# - Harus ada perintah compile-test untuk kompilasi dan grade untuk eksekusi
# - OUTPUT adalah variabel yang diperlukan, tidak perlu diubah.
# - ADT dan MAIN adalah variabel yang berisi nama-nama file,
#   silahkan diubah sesuai kebutuhan.

OUTPUT=bin
ADT1=Time/Time
ADT2=Date/Date
ADT3=DateTime/DateTime
ADT4=Queue/Queue
ADT5=Teller/Teller
ADT6=Event/Event
MAIN=main

compile-test: $(MAIN).cpp $(ADT6).o $(ADT1).o $(ADT2).o $(ADT3).o $(ADT4).o $(ADT5).o
	g++ -o $(MAIN) $(MAIN).cpp $(ADT6).o $(ADT1).o $(ADT2).o $(ADT3).o $(ADT4).o $(ADT5).o

grade:
	./$(MAIN)
