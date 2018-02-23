.class Lcom/igaworks/dao/NotAvailableCampaignDAO$1;
.super Ljava/lang/Object;
.source "NotAvailableCampaignDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/NotAvailableCampaignDAO;->saveNotAvailableCampaign(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/NotAvailableCampaignDAO;

.field final synthetic val$campaignKey:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/NotAvailableCampaignDAO;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/NotAvailableCampaignDAO;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->this$0:Lcom/igaworks/dao/NotAvailableCampaignDAO;

    iput-object p2, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$campaignKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->this$0:Lcom/igaworks/dao/NotAvailableCampaignDAO;

    iget-object v1, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/NotAvailableCampaignDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, v1}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->access$000(Lcom/igaworks/dao/NotAvailableCampaignDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$campaignKey:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$campaignKey:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v0, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->this$0:Lcom/igaworks/dao/NotAvailableCampaignDAO;

    iget-object v1, p0, Lcom/igaworks/dao/NotAvailableCampaignDAO$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/NotAvailableCampaignDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, v1}, Lcom/igaworks/dao/NotAvailableCampaignDAO;->access$000(Lcom/igaworks/dao/NotAvailableCampaignDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
