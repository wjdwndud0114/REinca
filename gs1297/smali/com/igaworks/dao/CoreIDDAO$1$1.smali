.class Lcom/igaworks/dao/CoreIDDAO$1$1;
.super Ljava/lang/Object;
.source "CoreIDDAO.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CoreIDDAO$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/CoreIDDAO$1;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CoreIDDAO$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/CoreIDDAO$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/dao/CoreIDDAO$1$1;->this$1:Lcom/igaworks/dao/CoreIDDAO$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 5
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO$1$1;->this$1:Lcom/igaworks/dao/CoreIDDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/CoreIDDAO$1;->this$0:Lcom/igaworks/dao/CoreIDDAO;

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/dao/CoreIDDAO;->setGoogleAdId(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO$1$1;->this$1:Lcom/igaworks/dao/CoreIDDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/CoreIDDAO$1;->this$0:Lcom/igaworks/dao/CoreIDDAO;

    iget-object v1, p0, Lcom/igaworks/dao/CoreIDDAO$1$1;->this$1:Lcom/igaworks/dao/CoreIDDAO$1;

    iget-object v1, v1, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/igaworks/dao/CoreIDDAO;->setGoogleAdId2SP(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/dao/CoreIDDAO;->access$100(Lcom/igaworks/dao/CoreIDDAO;Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :goto_0
    const/4 v0, 0x0

    # setter for: Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z
    invoke-static {v0}, Lcom/igaworks/dao/CoreIDDAO;->access$002(Z)Z

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO$1$1;->this$1:Lcom/igaworks/dao/CoreIDDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "CoreIDDAO > Fail to get google advertising ID >> adidInfo is Null "

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method
