.class final Lcom/igaworks/dao/ActivityInfoDAO$2;
.super Ljava/lang/Object;
.source "ActivityInfoDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/ActivityInfoDAO;->addActivityInfoForReferral(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$val:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/ActivityInfoDAO;->getActivityForReferralSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "referralActivityTrackingEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/dao/ActivityInfoDAO$2;->val$val:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method
