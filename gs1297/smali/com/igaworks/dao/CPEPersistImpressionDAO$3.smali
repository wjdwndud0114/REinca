.class Lcom/igaworks/dao/CPEPersistImpressionDAO$3;
.super Ljava/lang/Object;
.source "CPEPersistImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CPEPersistImpressionDAO;->removeImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$scheduleType:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CPEPersistImpressionDAO;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$scheduleType:I

    iput-object p4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

    iget-object v2, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$scheduleType:I

    # invokes: Lcom/igaworks/dao/CPEPersistImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->access$100(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$scheduleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::--::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method
