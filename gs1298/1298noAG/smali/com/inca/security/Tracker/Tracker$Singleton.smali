.class public Lcom/inca/security/Tracker/Tracker$Singleton;
.super Ljava/lang/Object;
.source "eb"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final synthetic IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/inca/security/Tracker/Tracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inca/security/Tracker/Tracker;-><init>(Lcom/inca/security/Tracker/Tracker$1;)V

    sput-object v0, Lcom/inca/security/Tracker/Tracker$Singleton;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic IiiiIIIIii()Lcom/inca/security/Tracker/Tracker;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/inca/security/Tracker/Tracker$Singleton;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/inca/security/Tracker/Tracker$Singleton;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    invoke-static {v0, p0}, Lcom/inca/security/Tracker/Tracker;->IiiiIIIIii(Lcom/inca/security/Tracker/Tracker;Landroid/content/Context;)V

    .line 139
    return-void
.end method
