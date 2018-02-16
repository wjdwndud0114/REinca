.class Lcom/google/android/gms/internal/zzgy$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgy;->zzd(Lcom/google/android/gms/internal/zzgv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGP:Lcom/google/android/gms/internal/zzgy;

.field final synthetic zzGQ:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgy;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzGP:Lcom/google/android/gms/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgy$2;->zzGQ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$2;->zzGP:Lcom/google/android/gms/internal/zzgy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzgy;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public zzfR()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$2;->zzGP:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$2;->zzGQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgy;->onClick(Landroid/view/View;)V

    return-void
.end method
