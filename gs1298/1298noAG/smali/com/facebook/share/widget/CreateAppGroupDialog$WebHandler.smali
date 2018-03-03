.class Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "CreateAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/CreateAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/widget/CreateAppGroupDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/CreateAppGroupDialog$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z
    .locals 1
    .param p1, "content"    # Lcom/facebook/share/model/AppGroupCreationContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 194
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->canShow(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/internal/AppCall;
    .locals 3
    .param p1, "content"    # Lcom/facebook/share/model/AppGroupCreationContent;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-virtual {v1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 203
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    const-string v1, "game_group_create"

    .line 206
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 203
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1

    .prologue
    .line 194
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->createAppCall(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
