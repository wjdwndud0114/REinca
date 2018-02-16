.class Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Lextern/okhttp3/internal/platform/Platform;
.source "JdkWithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "putMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getMethod"    # Ljava/lang/reflect/Method;
    .param p3, "removeMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lextern/okhttp3/internal/platform/Platform;-><init>()V

    .line 40
    iput-object p1, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 41
    iput-object p2, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 42
    iput-object p3, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 43
    iput-object p4, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 44
    iput-object p5, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method public static buildIfSupported()Lextern/okhttp3/internal/platform/Platform;
    .locals 12

    .prologue
    .line 92
    :try_start_0
    const-string v7, "org.eclipse.jetty.alpn.ALPN"

    .line 93
    .local v7, "negoClassName":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 94
    .local v6, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$Provider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 95
    .local v8, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$ClientProvider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 96
    .local v4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$ServerProvider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 97
    .local v5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "put"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "putMethod":Ljava/lang/reflect/Method;
    const-string v0, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const-string v0, "remove"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 100
    .local v3, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "putMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 106
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ignored":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    .end local v0    # "ignored":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "ignored":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    invoke-static {p3}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-class v3, Lextern/okhttp3/internal/platform/Platform;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    iget-object v6, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    new-instance v5, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    invoke-direct {v5, v1}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "provider":Ljava/lang/Object;
    iget-object v3, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    return-void

    .line 55
    .end local v2    # "provider":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 57
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 7
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 74
    :try_start_0
    iget-object v3, p0, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    check-cast v1, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 76
    .local v1, "provider":Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    # getter for: Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z
    invoke-static {v1}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->access$000(Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Z

    move-result v3

    if-nez v3, :cond_1

    # getter for: Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v1}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->access$100(Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 77
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lextern/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    # getter for: Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z
    invoke-static {v1}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->access$000(Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v1}, Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->access$100(Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 82
    .end local v1    # "provider":Lextern/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 84
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
