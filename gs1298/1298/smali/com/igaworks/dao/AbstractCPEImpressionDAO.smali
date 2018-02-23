.class public abstract Lcom/igaworks/dao/AbstractCPEImpressionDAO;
.super Ljava/lang/Object;
.source "AbstractCPEImpressionDAO.java"


# static fields
.field protected static final KEY_DELIMETER:Ljava/lang/String; = "::--::"

.field public static final PARENT_KEY_GROUP:Ljava/lang/String; = "::--::;"

.field protected static final PERSIST_SP_NAME_FOR_AD_SPACE:Ljava/lang/String; = "persist_ad_space_counter"

.field protected static final PERSIST_SP_NAME_FOR_ENGAGEMENT:Ljava/lang/String; = "persist_cpe_counter"

.field protected static final PERSIST_SP_NAME_FOR_PROMOTION:Ljava/lang/String; = "persist_promotion_counter"

.field protected static final SESSION_SP_NAME_FOR_AD_SPACE:Ljava/lang/String; = "session_ad_space_counter"

.field protected static final SESSION_SP_NAME_FOR_ENGAGEMENT:Ljava/lang/String; = "session_cpe_counter"

.field protected static final SESSION_SP_NAME_FOR_PROMOTION:Ljava/lang/String; = "session_promotion_counter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearImpressionData(Landroid/content/Context;)V
.end method

.method public abstract getImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract increaseImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
