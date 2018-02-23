.class public final enum Lcom/tapjoy/internal/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/af;

.field public static final enum b:Lcom/tapjoy/internal/af;

.field public static final enum c:Lcom/tapjoy/internal/af;

.field public static final enum d:Lcom/tapjoy/internal/af;

.field public static final enum e:Lcom/tapjoy/internal/af;

.field public static final enum f:Lcom/tapjoy/internal/af;

.field public static final enum g:Lcom/tapjoy/internal/af;

.field public static final enum h:Lcom/tapjoy/internal/af;

.field public static final enum i:Lcom/tapjoy/internal/af;

.field public static final enum j:Lcom/tapjoy/internal/af;

.field public static final enum k:Lcom/tapjoy/internal/af;

.field public static final enum l:Lcom/tapjoy/internal/af;

.field public static final enum m:Lcom/tapjoy/internal/af;

.field public static final enum n:Lcom/tapjoy/internal/af;

.field public static final enum o:Lcom/tapjoy/internal/af;

.field public static final enum p:Lcom/tapjoy/internal/af;

.field private static final synthetic s:[Lcom/tapjoy/internal/af;


# instance fields
.field private final q:Lcom/tapjoy/internal/af;

.field private final r:Lcom/tapjoy/internal/af;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    .line 12
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    .line 13
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    .line 14
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v8}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    .line 16
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "NATURAL_PORTRAIT"

    sget-object v2, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v9, v2}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    .line 17
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "RIGHT_LANDSCAPE"

    const/4 v2, 0x5

    sget-object v3, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->f:Lcom/tapjoy/internal/af;

    .line 18
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "REVERSE_PORTRAIT"

    const/4 v2, 0x6

    sget-object v3, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->g:Lcom/tapjoy/internal/af;

    .line 19
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "LEFT_LANDSCAPE"

    const/4 v2, 0x7

    sget-object v3, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->h:Lcom/tapjoy/internal/af;

    .line 21
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "NATURAL_LANDSCAPE"

    const/16 v2, 0x8

    sget-object v3, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    .line 22
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "RIGHT_PORTRAIT"

    const/16 v2, 0x9

    sget-object v3, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->j:Lcom/tapjoy/internal/af;

    .line 23
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "REVERSE_LANDSCAPE"

    const/16 v2, 0xa

    sget-object v3, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->k:Lcom/tapjoy/internal/af;

    .line 24
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "LEFT_PORTRAIT"

    const/16 v2, 0xb

    sget-object v3, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->l:Lcom/tapjoy/internal/af;

    .line 26
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "NATURAL_SQUARE"

    const/16 v2, 0xc

    sget-object v3, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    .line 27
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "RIGHT_SQUARE"

    const/16 v2, 0xd

    sget-object v3, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->n:Lcom/tapjoy/internal/af;

    .line 28
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "REVERSE_SQUARE"

    const/16 v2, 0xe

    sget-object v3, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->o:Lcom/tapjoy/internal/af;

    .line 29
    new-instance v0, Lcom/tapjoy/internal/af;

    const-string v1, "LEFT_SQUARE"

    const/16 v2, 0xf

    sget-object v3, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    sget-object v4, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/af;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V

    sput-object v0, Lcom/tapjoy/internal/af;->p:Lcom/tapjoy/internal/af;

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tapjoy/internal/af;

    sget-object v1, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tapjoy/internal/af;->d:Lcom/tapjoy/internal/af;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/internal/af;->f:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tapjoy/internal/af;->g:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tapjoy/internal/af;->h:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tapjoy/internal/af;->j:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tapjoy/internal/af;->k:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tapjoy/internal/af;->l:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tapjoy/internal/af;->n:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tapjoy/internal/af;->o:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tapjoy/internal/af;->p:Lcom/tapjoy/internal/af;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/internal/af;->s:[Lcom/tapjoy/internal/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p0, p0, Lcom/tapjoy/internal/af;->q:Lcom/tapjoy/internal/af;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/af;->r:Lcom/tapjoy/internal/af;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/af;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/tapjoy/internal/af;->q:Lcom/tapjoy/internal/af;

    .line 41
    iput-object p0, p0, Lcom/tapjoy/internal/af;->r:Lcom/tapjoy/internal/af;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/af;Lcom/tapjoy/internal/af;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/tapjoy/internal/af;->q:Lcom/tapjoy/internal/af;

    .line 46
    iput-object p4, p0, Lcom/tapjoy/internal/af;->r:Lcom/tapjoy/internal/af;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/af;
    .locals 5

    .prologue
    .line 84
    const-string v0, "window"

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 89
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1018
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_0

    .line 1019
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 91
    :goto_0
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-ge v0, v3, :cond_1

    .line 92
    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 95
    sget-object v0, Lcom/tapjoy/internal/af;->e:Lcom/tapjoy/internal/af;

    .line 125
    :goto_1
    return-object v0

    .line 1021
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1022
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 97
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/af;->j:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 99
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/af;->g:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 101
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/af;->l:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 103
    :cond_1
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_2

    .line 104
    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_1

    .line 107
    sget-object v0, Lcom/tapjoy/internal/af;->i:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 109
    :pswitch_3
    sget-object v0, Lcom/tapjoy/internal/af;->f:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 111
    :pswitch_4
    sget-object v0, Lcom/tapjoy/internal/af;->k:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 113
    :pswitch_5
    sget-object v0, Lcom/tapjoy/internal/af;->h:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 116
    :cond_2
    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_2

    .line 119
    sget-object v0, Lcom/tapjoy/internal/af;->m:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 121
    :pswitch_6
    sget-object v0, Lcom/tapjoy/internal/af;->n:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 123
    :pswitch_7
    sget-object v0, Lcom/tapjoy/internal/af;->o:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 125
    :pswitch_8
    sget-object v0, Lcom/tapjoy/internal/af;->p:Lcom/tapjoy/internal/af;

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 116
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Lcom/tapjoy/internal/af;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 137
    sget-object v0, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    goto :goto_0

    .line 135
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/af;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/tapjoy/internal/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/af;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/af;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tapjoy/internal/af;->s:[Lcom/tapjoy/internal/af;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/af;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    if-eq p0, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/af;->q:Lcom/tapjoy/internal/af;

    sget-object v1, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    if-eq p0, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/af;->q:Lcom/tapjoy/internal/af;

    sget-object v1, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/af;->r:Lcom/tapjoy/internal/af;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/af;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/af;->r:Lcom/tapjoy/internal/af;

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
