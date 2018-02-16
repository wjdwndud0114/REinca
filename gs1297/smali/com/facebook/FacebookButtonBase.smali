.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "analyticsButtonCreatedEventName"    # Ljava/lang/String;
    .param p6, "analyticsButtonTappedEventName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result p4

    .line 68
    :cond_0
    if-nez p4, :cond_1

    sget p4, Lcom/facebook/R$style;->com_facebook_button:I

    .line 69
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v1}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 226
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 231
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x10100d4

    aput v3, v1, v4

    .line 247
    .local v1, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 255
    .local v2, "backgroundResource":I
    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v2    # "backgroundResource":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 258
    .restart local v2    # "backgroundResource":I
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    .end local v2    # "backgroundResource":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 262
    :cond_2
    :try_start_2
    sget v3, Lcom/facebook/R$color;->com_facebook_blue:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 282
    .local v1, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 288
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 289
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 291
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 292
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 288
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 293
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 275
    nop

    :array_0
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 305
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 311
    .local v1, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 317
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 318
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 320
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 321
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 317
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 305
    :array_0
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 332
    new-array v3, v8, [I

    const v6, 0x1010098

    aput v6, v3, v7

    .line 335
    .local v3, "colorResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v3, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 341
    .local v2, "colorAttrs":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    new-array v5, v8, [I

    const v6, 0x10100af

    aput v6, v5, v7

    .line 348
    .local v5, "gravityResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v5, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 354
    .local v4, "gravityAttrs":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/16 v7, 0x11

    :try_start_1
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    const/4 v6, 0x3

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 363
    .local v1, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 369
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 370
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 373
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    return-void

    .line 343
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attrsResources":[I
    .end local v4    # "gravityAttrs":Landroid/content/res/TypedArray;
    .end local v5    # "gravityResources":[I
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 356
    .restart local v4    # "gravityAttrs":Landroid/content/res/TypedArray;
    .restart local v5    # "gravityResources":[I
    :catchall_1
    move-exception v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 373
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "attrsResources":[I
    :catchall_2
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 358
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method

.method private setupOnClickListener()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 211
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V

    .line 212
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 188
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 191
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to get Activity."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move v0, v10

    .line 143
    .local v0, "centered":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v2

    .line 152
    .local v2, "compoundPaddingLeft":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 153
    .local v3, "compoundPaddingRight":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v1

    .line 154
    .local v1, "compoundDrawablePadding":I
    add-int v9, v2, v1

    .line 155
    .local v9, "textX":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    sub-int v6, v12, v3

    .line 156
    .local v6, "textContentWidth":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v8

    .line 157
    .local v8, "textWidth":I
    sub-int v12, v6, v8

    div-int/lit8 v7, v12, 0x2

    .line 158
    .local v7, "textPaddingWidth":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v12

    sub-int v12, v2, v12

    div-int/lit8 v4, v12, 0x2

    .line 159
    .local v4, "imagePaddingWidth":I
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 160
    .local v5, "inset":I
    sub-int v12, v2, v5

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 161
    add-int v12, v3, v5

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 162
    iput-boolean v10, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 164
    .end local v1    # "compoundDrawablePadding":I
    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v4    # "imagePaddingWidth":I
    .end local v5    # "inset":I
    .end local v6    # "textContentWidth":I
    .end local v7    # "textPaddingWidth":I
    .end local v8    # "textWidth":I
    .end local v9    # "textX":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    iput-boolean v11, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 166
    return-void

    .end local v0    # "centered":Z
    :cond_1
    move v0, v11

    .line 142
    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 100
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 88
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    .line 222
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    .line 121
    return-void
.end method
