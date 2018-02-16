.class Lcom/google/android/gms/internal/zzrs$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->zznl()Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzacH:Lcom/google/android/gms/internal/zzrs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrs$7;->zzacH:Lcom/google/android/gms/internal/zzrs;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrs$7;->zzbl()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzbl()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$7;->zzacH:Lcom/google/android/gms/internal/zzrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzof()V

    const/4 v0, 0x0

    return-object v0
.end method
