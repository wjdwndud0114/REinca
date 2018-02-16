.class public final Lcom/unity3d/player/o;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Z

.field static final e:Z

.field static final f:Z

.field static final g:Z

.field static final h:Lcom/unity3d/player/f;

.field static final i:Lcom/unity3d/player/e;

.field static final j:Lcom/unity3d/player/h;

.field static final k:Lcom/unity3d/player/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/o;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v0, v4, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unity3d/player/o;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/unity3d/player/o;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/unity3d/player/o;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/unity3d/player/o;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/unity3d/player/o;->f:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_7

    :goto_6
    sput-boolean v1, Lcom/unity3d/player/o;->g:Z

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/unity3d/player/d;

    invoke-direct {v0}, Lcom/unity3d/player/d;-><init>()V

    :goto_7
    sput-object v0, Lcom/unity3d/player/o;->h:Lcom/unity3d/player/f;

    sget-boolean v0, Lcom/unity3d/player/o;->b:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/unity3d/player/c;

    invoke-direct {v0}, Lcom/unity3d/player/c;-><init>()V

    :goto_8
    sput-object v0, Lcom/unity3d/player/o;->i:Lcom/unity3d/player/e;

    sget-boolean v0, Lcom/unity3d/player/o;->d:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0}, Lcom/unity3d/player/k;-><init>()V

    :goto_9
    sput-object v0, Lcom/unity3d/player/o;->j:Lcom/unity3d/player/h;

    sget-boolean v0, Lcom/unity3d/player/o;->e:Z

    if-eqz v0, :cond_0

    new-instance v3, Lcom/unity3d/player/j;

    invoke-direct {v3}, Lcom/unity3d/player/j;-><init>()V

    :cond_0
    sput-object v3, Lcom/unity3d/player/o;->k:Lcom/unity3d/player/g;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    move-object v0, v3

    goto :goto_7

    :cond_9
    move-object v0, v3

    goto :goto_8

    :cond_a
    move-object v0, v3

    goto :goto_9
.end method
