class Menu < ActiveRecord::Base
  has_many :items
  belongs_to :restaurant

  def self.random_gen
    arr = ["https://images.unsplash.com/photo-1424593463432-4104fa2c015a?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=d17ff8c85e0b8c8064a9468f70610472", "https://images.unsplash.com/photo-1438806146127-b8ad315ddc89?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=7c817c6edcb3fea9db4cacb97040f0ef", "https://images.unsplash.com/photo-1447078806655-40579c2520d6?crop=entropy&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=1300", "https://images.unsplash.com/photo-1458644267420-66bc8a5f21e4?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=c5e8bad1006c7b7f8632f1812cfe65cf", "https://images.unsplash.com/photo-1458917524587-d3236cc8c2c8?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=7318f2806eaeed2765c233064d42399d", "https://images.unsplash.com/photo-1447078806655-40579c2520d6?crop=entropy&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=1300", "https://images.unsplash.com/photo-1441986060468-324610e6e6a8?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=330f334900c40686b86f999bd2e7c131", "https://images.unsplash.com/photo-1448043552756-e747b7a2b2b8?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=3bb369dfabafdee3835a98f52d4fa750"]
    arr.sample
  end
end
