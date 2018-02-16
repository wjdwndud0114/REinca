.class public final Lcom/tapjoy/internal/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/at;


# instance fields
.field public final a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ar;->b:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/tapjoy/internal/ar;->a:Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tapjoy/internal/ar;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/ar;->b:Ljava/lang/Object;

    .line 19
    return-void
.end method
