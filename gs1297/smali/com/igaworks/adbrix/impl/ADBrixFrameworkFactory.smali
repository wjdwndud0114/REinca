.class public Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;
.super Ljava/lang/Object;
.source "ADBrixFrameworkFactory.java"


# static fields
.field private static singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-direct {v0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    .line 17
    :cond_0
    const-string v1, "ADBrix"

    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    check-cast v0, Lcom/igaworks/interfaces/CommonActivityListener;

    invoke-static {v1, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->addActivityListener(Ljava/lang/String;Lcom/igaworks/interfaces/CommonActivityListener;)V

    .line 18
    const-string v1, "ADBrix_OnEndSession"

    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    check-cast v0, Lcom/igaworks/interfaces/ExtendedCommonActivityListener;

    invoke-static {v1, v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->addExtendedActivityListener(Ljava/lang/String;Lcom/igaworks/interfaces/ExtendedCommonActivityListener;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFramework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-direct {v0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    .line 29
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->singleton:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    return-object v0
.end method
