.class public Lcom/google/android/gms/drive/events/zzi;
.super Ljava/lang/Object;


# direct methods
.method public static zza(ILcom/google/android/gms/drive/DriveId;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
