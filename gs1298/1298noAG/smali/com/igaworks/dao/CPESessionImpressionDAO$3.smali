.class Lcom/igaworks/dao/CPESessionImpressionDAO$3;
.super Ljava/lang/Object;
.source "CPESessionImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CPESessionImpressionDAO;->clearImpressionData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CPESessionImpressionDAO;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CPESessionImpressionDAO;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

    iget-object v2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    # invokes: Lcom/igaworks/dao/CPESessionImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPESessionImpressionDAO;->access$100(Lcom/igaworks/dao/CPESessionImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v1, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

    iget-object v2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$3;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    # invokes: Lcom/igaworks/dao/CPESessionImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPESessionImpressionDAO;->access$100(Lcom/igaworks/dao/CPESessionImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method
