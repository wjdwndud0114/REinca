.class Lnet/supercat/stone/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/stone/MainActivity;->postKakaoStory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/stone/MainActivity;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    iput-object p2, p0, Lnet/supercat/stone/MainActivity$3;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lnet/supercat/stone/MainActivity$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lnet/supercat/stone/MainActivity$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 330
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    invoke-virtual {v1}, Lnet/supercat/stone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/supercat/StoryLink;->getLink(Landroid/content/Context;)Lnet/supercat/StoryLink;

    move-result-object v0

    .line 331
    .local v0, "storyLink":Lnet/supercat/StoryLink;
    invoke-virtual {v0}, Lnet/supercat/StoryLink;->isAvailableIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string v1, "[PlatformManager]"

    const-string v2, "NativePostedKakaoStory"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 337
    .local v7, "urlInfoAndroid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$3;->val$text:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "desc"

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$3;->val$title:Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "imageurl"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "http://lostguns.kernys.net/images/screenshot.png"

    aput-object v3, v2, v4

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "type"

    const-string v2, "article"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :try_start_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/supercat/stone/MainActivity$3;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/supercat/stone/MainActivity$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    .line 345
    invoke-virtual {v3}, Lnet/supercat/stone/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    .line 346
    invoke-virtual {v4}, Lnet/supercat/stone/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lnet/supercat/stone/MainActivity$3;->this$0:Lnet/supercat/stone/MainActivity;

    invoke-virtual {v5}, Lnet/supercat/stone/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v5, p0, Lnet/supercat/stone/MainActivity$3;->val$title:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 343
    invoke-virtual/range {v0 .. v7}, Lnet/supercat/StoryLink;->openKakaoLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    const-string v1, "[PlatformManager]"

    const-string v2, "NativePostedKakaoStory"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v8

    .line 351
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "supercat"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const-string v1, "[PlatformManager]"

    const-string v2, "NativePostedKakaoStory"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
