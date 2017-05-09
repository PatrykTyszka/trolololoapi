# frozen_string_literal: true
module Api
  module V1
    class BoardsController < ApiController
      before_action :authenticate

      def index
        @boards = Board.all
        render json: @boards, serialize: BoardSerializer
      end

      def create
        @board = Board.create(board_params)
        render json: @board, serialize: BoardSerializer
      end

      def destroy
        board = Board.find(params[:id])
        board.destroy
        render json: board, serialize: BoardSerializer
      end

      private

      def board_params
        params.require(:board).permit(:title)
      end
    end # class BoardsController
  end # module V1
end # module Api
