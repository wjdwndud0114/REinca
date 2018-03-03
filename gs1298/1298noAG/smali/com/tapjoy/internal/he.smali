.class public final Lcom/tapjoy/internal/he;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field public b:I

.field c:I

.field d:Lcom/tapjoy/internal/hd;

.field e:Ljava/util/List;

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/he;->a:[I

    .line 32
    iput v1, p0, Lcom/tapjoy/internal/he;->b:I

    .line 33
    iput v1, p0, Lcom/tapjoy/internal/he;->c:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    .line 55
    iput v1, p0, Lcom/tapjoy/internal/he;->m:I

    return-void
.end method
