.class Lcom/google/android/gms/tagmanager/zzcv$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcv;->zzb(Lcom/google/android/gms/internal/zzbgg$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbFA:Lcom/google/android/gms/internal/zzbgg$zza;

.field final synthetic zzbFz:Lcom/google/android/gms/tagmanager/zzcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcv;Lcom/google/android/gms/internal/zzbgg$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbFz:Lcom/google/android/gms/tagmanager/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbFA:Lcom/google/android/gms/internal/zzbgg$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbFz:Lcom/google/android/gms/tagmanager/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbFA:Lcom/google/android/gms/internal/zzbgg$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcv;->zzc(Lcom/google/android/gms/internal/zzbgg$zza;)Z

    return-void
.end method
