.class Lcom/google/android/gms/internal/zznp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznp;->zza(Lcom/google/android/gms/internal/zznx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzUI:Lcom/google/android/gms/internal/zznp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznp$1;->zzUI:Lcom/google/android/gms/internal/zznp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzUI:Lcom/google/android/gms/internal/zznp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznp;->zza(Lcom/google/android/gms/internal/zznp;I)V

    return-void
.end method
