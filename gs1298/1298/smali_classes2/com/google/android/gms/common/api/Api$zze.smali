.class public interface abstract Lcom/google/android/gms/common/api/Api$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zze"
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzr;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zzqD()Z
.end method

.method public abstract zzqS()Z
.end method

.method public abstract zzqT()Landroid/content/Intent;
.end method

.method public abstract zzuI()Z
.end method

.method public abstract zzuJ()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
