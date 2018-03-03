.class final Lcom/igaworks/core/OpenUDID_manager$2;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/core/OpenUDID_manager;->sync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/igaworks/core/OpenUDID_manager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    new-instance v0, Lcom/igaworks/core/OpenUDID_manager;

    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igaworks/core/OpenUDID_manager;-><init>(Landroid/content/Context;Lcom/igaworks/core/OpenUDID_manager$1;)V

    .line 185
    .local v0, "manager":Lcom/igaworks/core/OpenUDID_manager;
    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$000(Lcom/igaworks/core/OpenUDID_manager;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;
    invoke-static {v1}, Lcom/igaworks/core/OpenUDID_manager;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    # getter for: Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/core/OpenUDID_manager;->access$100()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.OpenUDID.GETUDID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/igaworks/core/OpenUDID_manager;->access$402(Lcom/igaworks/core/OpenUDID_manager;Ljava/util/List;)Ljava/util/List;

    .line 192
    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$400(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    # invokes: Lcom/igaworks/core/OpenUDID_manager;->startService()V
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$500(Lcom/igaworks/core/OpenUDID_manager;)V

    .line 203
    .end local v0    # "manager":Lcom/igaworks/core/OpenUDID_manager;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v0    # "manager":Lcom/igaworks/core/OpenUDID_manager;
    :cond_1
    const/4 v1, 0x1

    # setter for: Lcom/igaworks/core/OpenUDID_manager;->mInitialized:Z
    invoke-static {v1}, Lcom/igaworks/core/OpenUDID_manager;->access$602(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "manager":Lcom/igaworks/core/OpenUDID_manager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
