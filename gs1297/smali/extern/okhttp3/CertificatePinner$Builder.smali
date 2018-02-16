.class public final Lextern/okhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lextern/okhttp3/CertificatePinner$Builder;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    .prologue
    .line 313
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "pattern == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    :cond_0
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 316
    .local v3, "pin":Ljava/lang/String;
    iget-object v4, p0, Lextern/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    new-instance v5, Lextern/okhttp3/CertificatePinner$Pin;

    invoke-direct {v5, p1, v3}, Lextern/okhttp3/CertificatePinner$Pin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v3    # "pin":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public build()Lextern/okhttp3/CertificatePinner;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    new-instance v0, Lextern/okhttp3/CertificatePinner;

    iget-object v1, p0, Lextern/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-static {v1}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lextern/okhttp3/CertificatePinner;-><init>(Ljava/util/List;Lextern/okhttp3/internal/tls/CertificateChainCleaner;Lextern/okhttp3/CertificatePinner$1;)V

    return-object v0
.end method
