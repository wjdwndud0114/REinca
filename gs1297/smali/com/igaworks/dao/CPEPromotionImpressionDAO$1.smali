.class Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;
.super Ljava/lang/Object;
.source "CPEPromotionImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CPEPromotionImpressionDAO;->clearImpressionData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CPEPromotionImpressionDAO;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;->this$0:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;->this$0:Lcom/igaworks/dao/CPEPromotionImpressionDAO;

    iget-object v2, p0, Lcom/igaworks/dao/CPEPromotionImpressionDAO$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/CPEPromotionImpressionDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/igaworks/dao/CPEPromotionImpressionDAO;->access$000(Lcom/igaworks/dao/CPEPromotionImpressionDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method
