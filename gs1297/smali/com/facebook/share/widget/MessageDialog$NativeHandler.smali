.class Lcom/facebook/share/widget/MessageDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/MessageDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/MessageDialog;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/MessageDialog;Lcom/facebook/share/widget/MessageDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/widget/MessageDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/MessageDialog$1;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/MessageDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 1
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 5
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForMessage(Lcom/facebook/share/model/ShareContent;)V

    .line 213
    iget-object v3, p0, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {v3}, Lcom/facebook/share/widget/MessageDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 214
    .local v1, "appCall":Lcom/facebook/internal/AppCall;
    iget-object v3, p0, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {v3}, Lcom/facebook/share/widget/MessageDialog;->getShouldFailOnDataError()Z

    move-result v2

    .line 215
    .local v2, "shouldFailOnDataError":Z
    iget-object v3, p0, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/MessageDialog;

    # invokes: Lcom/facebook/share/widget/MessageDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/facebook/share/widget/MessageDialog;->access$100(Lcom/facebook/share/widget/MessageDialog;)Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/facebook/share/widget/MessageDialog$NativeHandler$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/facebook/share/widget/MessageDialog$NativeHandler$1;-><init>(Lcom/facebook/share/widget/MessageDialog$NativeHandler;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    # invokes: Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    invoke-static {v4}, Lcom/facebook/share/widget/MessageDialog;->access$200(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v4

    .line 217
    invoke-static {v1, v3, v4}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    .line 238
    return-object v1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
