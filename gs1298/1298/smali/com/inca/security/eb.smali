.class public Lcom/inca/security/eb;
.super Ljava/lang/Object;
.source "qb"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic IIIIiiIiII:I = 0x0

.field public static final synthetic IIiIiIIIii:I = 0x1

.field public static final synthetic IiIiIIIiIi:I = 0x5

.field public static final synthetic IiIiIiiIii:I = 0x7

.field public static final synthetic IiiIiiiIiI:I = 0x6


# instance fields
.field public final synthetic IIIiiiiIII:Lcom/inca/security/rb;


# direct methods
.method public constructor <init>(Lcom/inca/security/rb;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/rb;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/inca/security/eb;->IIIiiiiIII:Lcom/inca/security/rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
