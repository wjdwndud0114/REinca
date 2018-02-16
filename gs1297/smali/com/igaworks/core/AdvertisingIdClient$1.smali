.class final Lcom/igaworks/core/AdvertisingIdClient$1;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/core/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$adId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/igaworks/core/AdvertisingIdClient$1;->val$_context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/core/AdvertisingIdClient$1;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/igaworks/core/AdvertisingIdClient$1;->val$_context:Landroid/content/Context;

    const-string v3, "adpopcorn_parameter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "google_ad_id"

    iget-object v3, p0, Lcom/igaworks/core/AdvertisingIdClient$1;->val$adId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void
.end method
