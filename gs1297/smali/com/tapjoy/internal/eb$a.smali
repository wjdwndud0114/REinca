.class final Lcom/tapjoy/internal/eb$a;
.super Lcom/tapjoy/internal/dj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/tapjoy/internal/eb;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/dj;-><init>(Ljava/lang/Class;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)Lcom/tapjoy/internal/dq;
    .locals 1

    .prologue
    .line 45
    .line 1052
    invoke-static {p1}, Lcom/tapjoy/internal/eb;->a(I)Lcom/tapjoy/internal/eb;

    move-result-object v0

    .line 45
    return-object v0
.end method
