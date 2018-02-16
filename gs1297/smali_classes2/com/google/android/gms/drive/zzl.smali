.class public Lcom/google/android/gms/drive/zzl;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/zzl$zza;
    }
.end annotation


# instance fields
.field private zzaJK:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-boolean p4, p0, Lcom/google/android/gms/drive/zzl;->zzaJK:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/zzl;-><init>(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/zzl$zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzl$zza;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzl$zza;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzG()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzl$zza;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzzF()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzl$zza;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzl$zza;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzl;

    return-object v0
.end method


# virtual methods
.method public zzzM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzl;->zzaJK:Z

    return v0
.end method
