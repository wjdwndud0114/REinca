.class public abstract Lcom/tapjoy/mraid/controller/Abstract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;,
        Lcom/tapjoy/mraid/controller/Abstract$Properties;,
        Lcom/tapjoy/mraid/controller/Abstract$Dimensions;,
        Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    }
.end annotation


# static fields
.field public static final EXIT:Ljava/lang/String; = "exit"

.field public static final FULL_SCREEN:Ljava/lang/String; = "fullscreen"

.field public static final STYLE_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field protected a:Lcom/tapjoy/mraid/view/MraidView;

.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 0
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Abstract;->a:Lcom/tapjoy/mraid/view/MraidView;

    .line 256
    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Abstract;->b:Landroid/content/Context;

    .line 257
    return-void
.end method


# virtual methods
.method public abstract stopAllListeners()V
.end method
