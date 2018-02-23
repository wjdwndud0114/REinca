.class final Lcom/tapjoy/TJCorePlacement$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJActionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$11;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelled()V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public final completed()V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$11;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    return-object v0
.end method
