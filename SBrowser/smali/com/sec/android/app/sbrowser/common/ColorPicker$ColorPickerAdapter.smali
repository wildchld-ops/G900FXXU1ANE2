.class public Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerAdapter"
.end annotation


# instance fields
.field colorGridColWidth:I

.field private colorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/ColorPicker;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v3, 0x50

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorGridColWidth:I

    new-array v0, v8, [[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "FFFFFF"

    aput-object v4, v3, v6

    const-string v4, "C0C0C0"

    aput-object v4, v3, v7

    const-string v4, "000080"

    aput-object v4, v3, v8

    const-string v4, "000000"

    aput-object v4, v3, v9

    const-string v4, "FF0000"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "800000"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "FFFF00"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "808000"

    aput-object v5, v3, v4

    aput-object v3, v0, v6

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "00FF00"

    aput-object v4, v3, v6

    const-string v4, "008000"

    aput-object v4, v3, v7

    const-string v4, "00FFFF"

    aput-object v4, v3, v8

    const-string v4, "008080"

    aput-object v4, v3, v9

    const-string v4, "0000FF"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "000080"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "FF00FF"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "800080"

    aput-object v5, v3, v4

    aput-object v3, v0, v7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v1, v0, p1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/ColorPicker;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorGridColWidth:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorGridColWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    return-object v0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method