import SwiftUI

struct FemaleAdoHealth_CongratsView: View {
    @Binding var router: Router
    
    // Adicione uma propriedade para rastrear se o temporizador já foi iniciado
    @State private var timerStarted = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("FemaleAdoHealth_Congrats")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            // Use um condicional para verificar se o temporizador já foi iniciado
            if !timerStarted {
                Color.clear.onAppear {
                    // Inicie o temporizador após a tela aparecer pela primeira vez
                    Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { _ in
                        // Após 5 segundos, atualize o router para a próxima tela
                        if saudavel >= 2 {
                            router = .FemaleAdultHealthScore
                        } else {
                            router = .FemaleAdultSickScore
                        }
                    }
                    
                    // Marque o temporizador como iniciado para evitar que seja reiniciado
                    timerStarted = true
                }
            }
        }
    }
}
