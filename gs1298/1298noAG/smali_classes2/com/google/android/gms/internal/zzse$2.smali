.class Lcom/google/android/gms/internal/zzse$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzse;->zzoq()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzadS:Lcom/google/android/gms/internal/zzse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzse$2;->zzadS:Lcom/google/android/gms/internal/zzse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse$2;->zzou()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzou()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzse$2;->zzadS:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
