.class public Lcom/inca/security/ic;
.super Ljava/lang/Object;
.source "tc"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/vc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/vc;


# direct methods
.method public constructor <init>(Lcom/inca/security/vc;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/vc;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/inca/security/ic;->IiIiIiiIii:Lcom/inca/security/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, ""

    return-object v0
.end method
