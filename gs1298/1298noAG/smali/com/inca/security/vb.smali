.class public Lcom/inca/security/vb;
.super Ljava/lang/Object;
.source "na"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/db;,
        Lcom/inca/security/mb;
    }
.end annotation


# static fields
.field private static final synthetic IIIIiiIiII:J = 0x65ca3fd7b11c705eL


# instance fields
.field public synthetic IIIiiiiIII:I

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/inca/security/vb;->IiIiIiiIii:I

    .line 181
    iput p2, p0, Lcom/inca/security/vb;->IIIiiiiIII:I

    .line 0
    iput-object p3, p0, Lcom/inca/security/vb;->IiiIiiiIiI:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/inca/security/vb;->IiIiIiiIii:I

    return v0
.end method

.method public IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/inca/security/vb;->IiiIiiiIiI:Ljava/lang/String;

    return-object v0
.end method

.method public iIiIIiIIIi()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/inca/security/vb;->IIIiiiiIII:I

    return v0
.end method
