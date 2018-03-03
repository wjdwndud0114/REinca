.class Lcom/igaworks/dao/CoreIDDAO$1;
.super Ljava/lang/Object;
.source "CoreIDDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CoreIDDAO;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CoreIDDAO;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CoreIDDAO;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CoreIDDAO;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/igaworks/dao/CoreIDDAO$1;->this$0:Lcom/igaworks/dao/CoreIDDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 44
    :try_start_0
    # getter for: Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "CoreIDDAO is called already."

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 70
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x1

    # setter for: Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z
    invoke-static {v2}, Lcom/igaworks/dao/CoreIDDAO;->access$002(Z)Z

    .line 49
    iget-object v2, p0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    const-string v4, "Initialzing CoreIDDAO"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 50
    iget-object v2, p0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    .line 51
    .local v0, "didManager":Lcom/igaworks/core/DeviceIDManger;
    iget-object v2, p0, Lcom/igaworks/dao/CoreIDDAO$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/dao/CoreIDDAO$1$1;

    invoke-direct {v3, p0}, Lcom/igaworks/dao/CoreIDDAO$1$1;-><init>(Lcom/igaworks/dao/CoreIDDAO$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "didManager":Lcom/igaworks/core/DeviceIDManger;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    # setter for: Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z
    invoke-static {v2}, Lcom/igaworks/dao/CoreIDDAO;->access$002(Z)Z

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
