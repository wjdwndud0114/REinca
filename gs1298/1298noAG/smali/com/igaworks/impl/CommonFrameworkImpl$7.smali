.class Lcom/igaworks/impl/CommonFrameworkImpl$7;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$7;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1283
    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$7;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v1

    .line 1285
    .local v1, "httpManager":Lcom/igaworks/net/CommonHttpManager;
    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$7;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/ActivityInfoDAO;->getActivityInfoForReferral(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1287
    .local v0, "activityInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/igaworks/net/CommonHttpManager;->CPI_referrerCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1288
    return-void
.end method
