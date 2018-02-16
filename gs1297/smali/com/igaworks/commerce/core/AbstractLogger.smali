.class public abstract Lcom/igaworks/commerce/core/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"


# static fields
.field public static DEBUG:I

.field public static ERROR:I

.field public static INFO:I


# instance fields
.field protected level:I

.field protected nextLogger:Lcom/igaworks/commerce/core/AbstractLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x1

    sput v0, Lcom/igaworks/commerce/core/AbstractLogger;->INFO:I

    .line 5
    const/4 v0, 0x2

    sput v0, Lcom/igaworks/commerce/core/AbstractLogger;->DEBUG:I

    .line 6
    const/4 v0, 0x3

    sput v0, Lcom/igaworks/commerce/core/AbstractLogger;->ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    iget v0, p0, Lcom/igaworks/commerce/core/AbstractLogger;->level:I

    if-gt v0, p1, :cond_0

    .line 19
    invoke-virtual {p0, p2}, Lcom/igaworks/commerce/core/AbstractLogger;->write(Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/igaworks/commerce/core/AbstractLogger;->nextLogger:Lcom/igaworks/commerce/core/AbstractLogger;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/igaworks/commerce/core/AbstractLogger;->nextLogger:Lcom/igaworks/commerce/core/AbstractLogger;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/commerce/core/AbstractLogger;->logMessage(ILjava/lang/String;)V

    .line 24
    :cond_1
    return-void
.end method

.method public setNextLogger(Lcom/igaworks/commerce/core/AbstractLogger;)V
    .locals 0
    .param p1, "nextLogger"    # Lcom/igaworks/commerce/core/AbstractLogger;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/igaworks/commerce/core/AbstractLogger;->nextLogger:Lcom/igaworks/commerce/core/AbstractLogger;

    .line 15
    return-void
.end method

.method protected abstract write(Ljava/lang/String;)V
.end method
