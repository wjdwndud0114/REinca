.class Lcom/igaworks/adbrix/db/DailyPlayDAO$1;
.super Ljava/lang/Object;
.source "DailyPlayDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/DailyPlayDAO;->saveLastConversionDateTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/db/DailyPlayDAO;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;->this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    iput-object p2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;->this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    iget-object v2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/adbrix/db/DailyPlayDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->access$000(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    const-string v1, "previous_date"

    sget-object v2, Lcom/igaworks/adbrix/db/DailyPlayDAO;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method
