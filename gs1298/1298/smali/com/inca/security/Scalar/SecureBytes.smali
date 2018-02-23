.class public Lcom/inca/security/Scalar/SecureBytes;
.super Ljava/lang/Object;
.source "SecureBytes.java" #SecureBytes.java

# interfaces
.implements Lcom/inca/security/Interface/SecureBytes;


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/Scalar/SecureBytes;->mData:[B

    .line 7
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/Scalar/SecureBytes;->mData:[B

    .line 10
    invoke-virtual {p0, p1}, Lcom/inca/security/Scalar/SecureBytes;->set([B)V

    .line 11
    return-void
.end method


# virtual methods
.method public get()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/inca/security/Scalar/SecureBytes;->mData:[B

    return-object v0
.end method

.method public set([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 14
    iput-object p1, p0, Lcom/inca/security/Scalar/SecureBytes;->mData:[B

    .line 15
    return-void
.end method
