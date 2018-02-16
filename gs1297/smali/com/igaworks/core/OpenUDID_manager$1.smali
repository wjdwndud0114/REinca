.class Lcom/igaworks/core/OpenUDID_manager$1;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/core/OpenUDID_manager;->storeOpenUDID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/core/OpenUDID_manager;


# direct methods
.method constructor <init>(Lcom/igaworks/core/OpenUDID_manager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/core/OpenUDID_manager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/igaworks/core/OpenUDID_manager$1;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager$1;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/igaworks/core/OpenUDID_manager;->access$000(Lcom/igaworks/core/OpenUDID_manager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v1, "openudid"

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;
    invoke-static {}, Lcom/igaworks/core/OpenUDID_manager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method
