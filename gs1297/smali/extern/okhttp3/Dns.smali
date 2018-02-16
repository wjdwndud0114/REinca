.class public interface abstract Lextern/okhttp3/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final SYSTEM:Lextern/okhttp3/Dns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lextern/okhttp3/Dns$1;

    invoke-direct {v0}, Lextern/okhttp3/Dns$1;-><init>()V

    sput-object v0, Lextern/okhttp3/Dns;->SYSTEM:Lextern/okhttp3/Dns;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
