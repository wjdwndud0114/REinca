.class public Lcom/facebook/unity/UnityReflection;
.super Ljava/lang/Object;
.source "UnityReflection.java"


# static fields
.field private static unityPlayer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUnityActivity()Landroid/app/Activity;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    sget-object v3, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 53
    const-string v3, "com.unity3d.player.UnityPlayer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    .line 56
    :cond_0
    sget-object v3, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    const-string v4, "currentActivity"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 58
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v4, "Current unity activity is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 63
    goto :goto_0
.end method

.method public static SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "unityObject"    # Ljava/lang/String;
    .param p1, "unityMethod"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    sget-object v2, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 39
    const-string v2, "com.unity3d.player.UnityPlayer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    .line 42
    :cond_0
    sget-object v2, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    const-string v3, "UnitySendMessage"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/facebook/unity/UnityReflection;->unityPlayer:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "TODO"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
