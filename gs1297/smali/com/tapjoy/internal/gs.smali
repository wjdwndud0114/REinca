.class public final Lcom/tapjoy/internal/gs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/tapjoy/internal/bn;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Lcom/tapjoy/internal/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/tapjoy/internal/gs$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gs$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gs;->h:Lcom/tapjoy/internal/bn;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/gs;->a:Landroid/graphics/Rect;

    .line 25
    iput-object p2, p0, Lcom/tapjoy/internal/gs;->b:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/tapjoy/internal/gs;->c:Z

    .line 27
    iput-object p4, p0, Lcom/tapjoy/internal/gs;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/tapjoy/internal/gs;->g:Lcom/tapjoy/internal/fl;

    .line 31
    return-void
.end method
