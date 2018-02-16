.class Lnet/supercat/stone/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/stone/MainActivity;->handlePushToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/stone/MainActivity;

.field final synthetic val$pushToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lnet/supercat/stone/MainActivity$2;->this$0:Lnet/supercat/stone/MainActivity;

    iput-object p2, p0, Lnet/supercat/stone/MainActivity$2;->val$pushToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "[PlatformManager]"

    const-string v1, "NativeHandlePushToken"

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$2;->val$pushToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
