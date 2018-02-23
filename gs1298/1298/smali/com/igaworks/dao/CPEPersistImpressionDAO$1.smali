.class Lcom/igaworks/dao/CPEPersistImpressionDAO$1;
.super Ljava/lang/Object;
.source "CPEPersistImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CPEPersistImpressionDAO;->increaseImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$targetStorageKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CPEPersistImpressionDAO;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

    iput-object p2, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$scheduleType:I

    iput-object p4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$targetStorageKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 94
    iget-object v3, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$scheduleType:I

    # invokes: Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    invoke-static {v3, v4, v5}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->access$000(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->this$0:Lcom/igaworks/dao/CPEPersistImpressionDAO;

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$scheduleType:I

    # invokes: Lcom/igaworks/dao/CPEPersistImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    invoke-static {v3, v4, v5}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->access$100(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$targetStorageKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::--::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "value":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$targetStorageKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::--::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method
