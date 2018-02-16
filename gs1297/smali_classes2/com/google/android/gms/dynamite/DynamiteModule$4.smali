.class final Lcom/google/android/gms/dynamite/DynamiteModule$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;->zzA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQD:I

    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQD:I

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQF:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQE:I

    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQE:I

    if-eqz v1, :cond_0

    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaQF:I

    goto :goto_0
.end method
