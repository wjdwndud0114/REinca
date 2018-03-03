.class final Lcom/igaworks/dao/AppImpressionDAO$1;
.super Ljava/lang/Object;
.source "AppImpressionDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/AppImpressionDAO;->setServerBaseTimeOffset(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$basetime:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/igaworks/dao/AppImpressionDAO$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/igaworks/dao/AppImpressionDAO$1;->val$basetime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/igaworks/dao/AppImpressionDAO$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "firstEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ServerBaseTimeOffset"

    iget-wide v2, p0, Lcom/igaworks/dao/AppImpressionDAO$1;->val$basetime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method
