//
//  ActionSheetBootcamp33.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 05.03.2023.
//

import SwiftUI

struct ActionSheetBootcamp33: View {
    
    @State private var isAlertShow = false
    @State private var isConfirmationDialogShow = false
    
    @State private var isInstagramAlertShow = false
    @State private var actionSheetOpton: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                isAlertShow.toggle()
            } label: {
                Text("Show ActionSheet")
            }
            .actionSheet(isPresented: $isAlertShow, content: getActionSheet)
                        
            
            // ConfirmationDialog - new ActionSheet
            
            Button {
                isConfirmationDialogShow.toggle()
            } label: {
                Text("Show ConfirmationDialog")
            }
            .confirmationDialog(Text("This new Action sheet"),
                                isPresented:$isConfirmationDialogShow) {
                Button("Ok") {
                    print("This is new ActionSheet")
                }
            }
            
            
            //--------------------
            
            VStack {
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@username")
                    Spacer()
                    Button {
                        actionSheetOpton = .isMyPost
                        isInstagramAlertShow.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .accentColor(.primary)
                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
            }
            .actionSheet(isPresented: $isInstagramAlertShow, content: getActionSheet)
        }
    }
    
    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("This is the tittle"))
        
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel(Text("Cancel"))
//
//        return ActionSheet(title: Text("This is the tittle"),
//                           message: Text("This is the message"),
//                           buttons: [button1, button2, button3])
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What wouid you like to do?")
        
        switch actionSheetOpton {
        case .isMyPost:
            return ActionSheet(title: title,
                        buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: title,
                        buttons: [shareButton, reportButton, cancelButton])
        }
    }
}



struct ActionSheetBootcamp33_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp33()
    }
}
