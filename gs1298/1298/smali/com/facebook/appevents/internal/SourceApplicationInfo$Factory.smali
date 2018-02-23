.class public Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, "openedByApplink":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 113
    .local v3, "callingApplication":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v7

    .line 117
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 127
    .local v5, "openIntent":Landroid/content/Intent;
    if-eqz v5, :cond_2

    const-string v8, "_fbSourceApplicationHasBeenSet"

    const/4 v9, 0x0

    .line 128
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 131
    const-string v8, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {v5}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "applinkData":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 134
    const/4 v6, 0x1

    .line 135
    const-string v8, "referer_app_link"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 136
    .local v1, "applinkReferrerData":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 137
    const-string v8, "package"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "applinkReferrerPackage":Ljava/lang/String;
    move-object v4, v2

    .line 144
    .end local v0    # "applinkData":Landroid/os/Bundle;
    .end local v1    # "applinkReferrerData":Landroid/os/Bundle;
    .end local v2    # "applinkReferrerPackage":Ljava/lang/String;
    :cond_2
    const-string v8, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v8, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v8, v4, v6, v7}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V

    move-object v7, v8

    goto :goto_0
.end method
