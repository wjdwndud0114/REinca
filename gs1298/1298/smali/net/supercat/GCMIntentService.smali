.class public Lnet/supercat/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "610498174886"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/supercat/GCMIntentService;->handler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method private showWindowAlert(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 61
    return-void
.end method


# virtual methods
.method notificationNormally(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x2

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 148
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 151
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 158
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 161
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    return-void
.end method

.method notificationWithBigPicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "banner"    # Landroid/graphics/Bitmap;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x2

    .line 242
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 245
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 246
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 247
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 251
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 252
    .local v2, "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 253
    invoke-virtual {v2, p3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 254
    invoke-virtual {v2, p5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 256
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 257
    invoke-virtual {v0, p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 259
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 260
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 261
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 262
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 263
    return-void
.end method

.method notificationWithBigText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v6, 0x2

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 213
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 214
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 215
    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 216
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 220
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 221
    .local v3, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v4, "stoneonline"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 222
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 223
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 225
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 226
    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 228
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 229
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 230
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 231
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 232
    return-void
.end method

.method notificationWithColorFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/app/PendingIntent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "messageColor"    # Ljava/lang/Integer;
    .param p5, "icon"    # I
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v0, p5

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    .local v2, "largeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "push"

    const-string v11, "layout"

    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "layoutID":I
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 171
    .local v8, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v9, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 172
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 173
    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 174
    invoke-virtual {v9, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 175
    invoke-virtual {v9, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 176
    invoke-virtual {v9, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 177
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 178
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 179
    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 183
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "push_title"

    const-string v11, "id"

    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 184
    .local v7, "pushTitleID":I
    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "push_message"

    const-string v11, "id"

    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 185
    .local v6, "pushMessageID":I
    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "push_icon"

    const-string v11, "id"

    invoke-virtual {p0}, Lnet/supercat/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, "pushIconID":I
    invoke-virtual {v8, v7, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p3

    invoke-virtual {v8, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    if-eqz p4, :cond_0

    .line 189
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 190
    :cond_0
    move/from16 v0, p5

    invoke-virtual {v8, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 194
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 195
    const/4 v9, 0x2

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 197
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    return-void
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lnet/supercat/GCMIntentService;->showNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "supercat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/supercat/GCMIntentService;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/supercat/GCMIntentService$1;

    invoke-direct {v1, p0, p2}, Lnet/supercat/GCMIntentService$1;-><init>(Lnet/supercat/GCMIntentService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public showNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v3, "supercat"

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "app_icon"

    const-string v9, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 84
    .local v7, "icon":I
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 85
    .local v22, "type":I
    const-string v3, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "title":Ljava/lang/String;
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "message":Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    const-class v3, Lnet/supercat/stone/MainActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 96
    .local v21, "key":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "title"

    .line 97
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "data"

    .line 98
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 103
    .local v23, "value":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 106
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 109
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v22, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 112
    invoke-virtual/range {v3 .. v8}, Lnet/supercat/GCMIntentService;->notificationNormally(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 114
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_5

    .line 116
    const-string v3, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, "colorStr":Ljava/lang/String;
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int v16, v3, v4

    .line 120
    .local v16, "color":I
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lnet/supercat/GCMIntentService;->notificationWithColorFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 117
    .end local v16    # "color":I
    :cond_4
    const/16 v16, -0x100

    goto :goto_2

    .line 122
    .end local v17    # "colorStr":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    .line 124
    const-string v3, "imageURL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "imageURL":Ljava/lang/String;
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual/range {p0 .. p0}, Lnet/supercat/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v18

    .line 127
    .local v18, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 128
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v9, Lnet/supercat/GCMIntentService$2;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lnet/supercat/GCMIntentService$2;-><init>(Lnet/supercat/GCMIntentService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_1

    .line 137
    .end local v18    # "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .end local v19    # "imageURL":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    move/from16 v0, v22

    if-ne v0, v3, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 140
    invoke-virtual/range {v3 .. v8}, Lnet/supercat/GCMIntentService;->notificationWithBigText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method
