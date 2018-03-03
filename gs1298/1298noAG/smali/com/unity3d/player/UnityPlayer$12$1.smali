.class final Lcom/unity3d/player/UnityPlayer$12$1;
.super Lcom/unity3d/player/UnityPlayer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$12;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$12;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$12;)V
    .locals 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, p1, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->a:Lcom/unity3d/player/UnityPlayer$12;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$12;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
