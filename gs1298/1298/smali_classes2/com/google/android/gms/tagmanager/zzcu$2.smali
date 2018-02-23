.class Lcom/google/android/gms/tagmanager/zzcu$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;Lcom/google/android/gms/tagmanager/zzcu$zzb;Lcom/google/android/gms/tagmanager/zzcu$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbFx:Lcom/google/android/gms/tagmanager/zzcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbFx:Lcom/google/android/gms/tagmanager/zzcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzct;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzct;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbFx:Lcom/google/android/gms/tagmanager/zzcu;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcu;->zza(Lcom/google/android/gms/tagmanager/zzcu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbFx:Lcom/google/android/gms/tagmanager/zzcu;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzcu;->zzb(Lcom/google/android/gms/tagmanager/zzcu;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;)V

    return-object v0
.end method
