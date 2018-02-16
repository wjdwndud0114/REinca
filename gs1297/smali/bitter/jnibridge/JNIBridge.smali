.class public Lbitter/jnibridge/JNIBridge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbitter/jnibridge/JNIBridge$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableInterfaceProxy(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lbitter/jnibridge/JNIBridge$a;

    invoke-virtual {v0}, Lbitter/jnibridge/JNIBridge$a;->a()V

    return-void
.end method

.method static native invoke(JLjava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method static newInterfaceProxy(JLjava/lang/Class;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Lbitter/jnibridge/JNIBridge$a;

    invoke-direct {v2, p0, p1}, Lbitter/jnibridge/JNIBridge$a;-><init>(J)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
