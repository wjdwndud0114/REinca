.class Lcom/igaworks/dao/CPESessionImpressionDAO$2;
.super Ljava/lang/Object;
.source "CPESessionImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CPESessionImpressionDAO;->removeImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$scheduleType:I

.field final synthetic val$targetStorageKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CPESessionImpressionDAO;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CPESessionImpressionDAO;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$scheduleType:I

    iput-object p4, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$targetStorageKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->this$0:Lcom/igaworks/dao/CPESessionImpressionDAO;

    iget-object v2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$scheduleType:I

    # invokes: Lcom/igaworks/dao/CPESessionImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPESessionImpressionDAO;->access$100(Lcom/igaworks/dao/CPESessionImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$targetStorageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::--::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/dao/CPESessionImpressionDAO$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method
